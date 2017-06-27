.class public Lorg/tekos/ShakeEventManager;
.super Ljava/lang/Object;
.source "ShakeEventManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tekos/ShakeEventManager$OnShakeEventListener;
    }
.end annotation


# static fields
.field private static final MOV_COUNTS:I = 0x2

.field private static final MOV_THRESHOLD:F = 15.0f

.field private static final SHAKE_WINDOW_TIME_INTERVAL:J = 0xbb8L


# instance fields
.field private counter:I

.field private firstMovTime:J

.field private listener:Lorg/tekos/ShakeEventManager$OnShakeEventListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDialogShowing:Z

.field private mUndoRedo:Lorg/tekos/TextViewUndoRedo;

.field private s:Landroid/hardware/Sensor;

.field private sManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lorg/tekos/ShakeEventManager;)Lorg/tekos/TextViewUndoRedo;
    .locals 1

    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    return-object v0
.end method

.method static synthetic -set0(Lorg/tekos/ShakeEventManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/tekos/ShakeEventManager;->mDialogShowing:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/tekos/ShakeEventManager;->counter:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    .line 45
    iput-object p1, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    .line 46
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->sManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->sManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->s:Landroid/hardware/Sensor;

    .line 44
    return-void
.end method

.method private calcMaxAcceleration(Landroid/hardware/SensorEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 69
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 70
    .local v0, "accX":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v1, v4, v5

    .line 71
    .local v1, "accY":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 73
    .local v2, "accZ":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 74
    .local v3, "max1":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private resetAllData()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "xOS"

    const-string/jumbo v1, "reset all values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/tekos/ShakeEventManager;->counter:I

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    .line 108
    return-void
.end method

.method private showUndoRedoDialog()V
    .locals 5

    .prologue
    .line 131
    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-boolean v3, p0, Lorg/tekos/ShakeEventManager;->mDialogShowing:Z

    if-eqz v3, :cond_1

    .line 135
    invoke-direct {p0}, Lorg/tekos/ShakeEventManager;->resetAllData()V

    .line 136
    return-void

    .line 139
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/tekos/ShakeEventManager;->mDialogShowing:Z

    .line 141
    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    invoke-virtual {v3}, Lorg/tekos/TextViewUndoRedo;->getCanUndo()Z

    move-result v2

    .line 142
    .local v2, "canUndo":Z
    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    invoke-virtual {v3}, Lorg/tekos/TextViewUndoRedo;->getCanRedo()Z

    move-result v1

    .line 144
    .local v1, "canRedo":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 147
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    if-eqz v2, :cond_3

    .line 150
    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104061c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/tekos/ShakeEventManager$1;

    invoke-direct {v4, p0}, Lorg/tekos/ShakeEventManager$1;-><init>(Lorg/tekos/ShakeEventManager;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_3
    if-eqz v1, :cond_4

    .line 160
    iget-object v3, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104061d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/tekos/ShakeEventManager$2;

    invoke-direct {v4, p0}, Lorg/tekos/ShakeEventManager$2;-><init>(Lorg/tekos/ShakeEventManager;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    :cond_4
    new-instance v3, Lorg/tekos/ShakeEventManager$3;

    invoke-direct {v3, p0}, Lorg/tekos/ShakeEventManager$3;-><init>(Lorg/tekos/ShakeEventManager;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lorg/tekos/ShakeEventManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    return-void

    .line 145
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->sManager:Landroid/hardware/SensorManager;

    .line 62
    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->listener:Lorg/tekos/ShakeEventManager$OnShakeEventListener;

    .line 64
    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->s:Landroid/hardware/Sensor;

    .line 65
    iput-object v0, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    .line 60
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUndoRedo()Lorg/tekos/TextViewUndoRedo;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 40
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/tekos/ShakeEventManager;->calcMaxAcceleration(Landroid/hardware/SensorEvent;)F

    move-result v0

    .line 80
    .local v0, "maxAcc":F
    const-string/jumbo v1, "SwA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max Acc ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 82
    iget v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    if-nez v1, :cond_1

    .line 83
    iget v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 87
    iget v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    .line 95
    iget v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lorg/tekos/ShakeEventManager;->listener:Lorg/tekos/ShakeEventManager$OnShakeEventListener;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lorg/tekos/ShakeEventManager;->listener:Lorg/tekos/ShakeEventManager$OnShakeEventListener;

    invoke-interface {v1}, Lorg/tekos/ShakeEventManager$OnShakeEventListener;->onShake()V

    .line 100
    :cond_2
    invoke-direct {p0}, Lorg/tekos/ShakeEventManager;->showUndoRedoDialog()V

    .line 101
    invoke-direct {p0}, Lorg/tekos/ShakeEventManager;->resetAllData()V

    goto :goto_0

    .line 89
    :cond_3
    const-string/jumbo v1, "xOS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Second move outside time interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tekos/ShakeEventManager;->counter:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/tekos/ShakeEventManager;->firstMovTime:J

    .line 92
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->sManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/tekos/ShakeEventManager;->s:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 50
    return-void
.end method

.method public setOnShakeListener(Lorg/tekos/ShakeEventManager$OnShakeEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/tekos/ShakeEventManager$OnShakeEventListener;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/tekos/ShakeEventManager;->listener:Lorg/tekos/ShakeEventManager$OnShakeEventListener;

    .line 114
    return-void
.end method

.method public setTextViewUndoRedo(Lorg/tekos/TextViewUndoRedo;)V
    .locals 0
    .param p1, "undoRedo"    # Lorg/tekos/TextViewUndoRedo;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/tekos/ShakeEventManager;->mUndoRedo:Lorg/tekos/TextViewUndoRedo;

    .line 118
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->sManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 56
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/tekos/ShakeEventManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 54
    :cond_0
    return-void
.end method
