.class public Lcom/android/server/gesture/EdgeGestureTracker;
.super Ljava/lang/Object;
.source "EdgeGestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_util_gesture_EdgeGesturePositionSwitchesValues:[I = null

.field public static final DEBUG:Z = false

.field public static final PIXEL_SWIPE_OFFTAKE_SLOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EdgeGestureTracker"

.field public static final TRIGGER_TIME_MS:J = 0x8cL


# instance fields
.field private mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

.field private mActive:Z

.field private final mBasePerpendicularDistance:I

.field private final mBaseThickness:I

.field private final mBaseTriggerDistance:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownTime:J

.field private mGracePeriod:I

.field private mGracePeriodDistance:I

.field private mInitialX:I

.field private mInitialY:I

.field private mOffTake:I

.field private mPerpendicularDistance:I

.field private mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

.field private mThickness:I

.field private mTimeOut:J

.field private mTriggerDistance:I


# direct methods
.method private static synthetic -getcom_android_internal_util_gesture_EdgeGesturePositionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/gesture/EdgeGestureTracker;->-com_android_internal_util_gesture_EdgeGesturePositionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/gesture/EdgeGestureTracker;->-com_android_internal_util_gesture_EdgeGesturePositionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->values()[Lcom/android/internal/util/gesture/EdgeGesturePosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v1}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v1}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v1}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v1}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/gesture/EdgeGestureTracker;->-com_android_internal_util_gesture_EdgeGesturePositionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "thickness"    # I
    .param p2, "distance"    # I
    .param p3, "perpendicular"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseThickness:I

    .line 69
    iput p2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseTriggerDistance:I

    .line 70
    iput p3, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBasePerpendicularDistance:I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/gesture/EdgeGestureTracker;->setSensitivity(I)V

    .line 64
    return-void
.end method

.method private setSensitivity(I)V
    .locals 5
    .param p1, "sensitivity"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "factor":F
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 77
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v0, v1, v2

    .line 84
    :cond_0
    add-float v1, v0, v4

    const/high16 v2, 0x430c0000    # 140.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTimeOut:J

    .line 86
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseThickness:I

    int-to-float v1, v1

    add-float v2, v0, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    .line 88
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBaseTriggerDistance:I

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    .line 89
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mBasePerpendicularDistance:I

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    .line 90
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    .line 74
    return-void
.end method

.method private startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    .line 153
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 156
    invoke-static {}, Lcom/android/server/gesture/EdgeGestureTracker;->-getcom_android_internal_util_gesture_EdgeGesturePositionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 147
    return-void

    .line 158
    :pswitch_0
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    .line 159
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 162
    :pswitch_1
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 165
    :pswitch_2
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriodDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    .line 166
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 169
    :pswitch_3
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public move(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 176
    iget-boolean v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTimeOut:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 177
    :cond_0
    const-string/jumbo v5, "EdgeGestureTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "edge gesture timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDownTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-boolean v12, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 179
    return v12

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 183
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 184
    .local v4, "y":I
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialX:I

    sub-int v0, v3, v5

    .line 185
    .local v0, "deltaX":I
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    sub-int v1, v4, v5

    .line 191
    .local v1, "deltaY":I
    const/4 v2, 0x0

    .line 192
    .local v2, "loaded":Z
    invoke-static {}, Lcom/android/server/gesture/EdgeGestureTracker;->-getcom_android_internal_util_gesture_EdgeGesturePositionSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-virtual {v6}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 240
    :cond_2
    :goto_0
    iput-boolean v12, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 241
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    if-eqz v5, :cond_3

    .line 246
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPosition:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-interface {v5, p1, v3, v4, v6}, Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;->onActivation(Landroid/view/MotionEvent;IILcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 248
    :cond_3
    return v2

    .line 194
    :pswitch_0
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    if-ge v3, v5, :cond_4

    .line 195
    iput v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 197
    :cond_4
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v5, :cond_2

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v5, v5

    if-le v1, v5, :cond_2

    .line 198
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-lt v3, v5, :cond_2

    .line 199
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    if-ge v0, v5, :cond_5

    .line 200
    add-int/lit8 v5, v3, -0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    .line 201
    return v10

    .line 203
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 207
    :pswitch_1
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v5, :cond_2

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v5, v5

    if-le v0, v5, :cond_2

    .line 208
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-gt v4, v5, :cond_2

    .line 209
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    neg-int v5, v5

    if-le v1, v5, :cond_6

    .line 210
    add-int/lit8 v5, v4, 0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    .line 211
    return v10

    .line 213
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 217
    :pswitch_2
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mGracePeriod:I

    if-le v3, v5, :cond_7

    .line 218
    iput v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mInitialY:I

    .line 220
    :cond_7
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v5, :cond_2

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v5, v5

    if-le v1, v5, :cond_2

    .line 221
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-gt v3, v5, :cond_2

    .line 222
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    neg-int v5, v5

    if-le v0, v5, :cond_8

    .line 223
    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    .line 224
    return v10

    .line 226
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 230
    :pswitch_3
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v5, :cond_2

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mPerpendicularDistance:I

    neg-int v5, v5

    if-le v0, v5, :cond_2

    .line 231
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    if-lt v4, v5, :cond_2

    .line 232
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mTriggerDistance:I

    if-ge v1, v5, :cond_9

    .line 233
    add-int/lit8 v5, v4, -0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mOffTake:I

    .line 234
    return v10

    .line 236
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActive:Z

    .line 97
    return-void
.end method

.method public setOnActivationListener(Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mActivationListener:Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;

    .line 93
    return-void
.end method

.method public start(Landroid/view/MotionEvent;II)Z
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "positions"    # I
    .param p3, "sensitivity"    # I

    .prologue
    const/4 v9, 0x1

    const v8, 0x3f666666    # 0.9f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 113
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 114
    .local v0, "fx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 115
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 118
    .local v1, "fy":F
    invoke-direct {p0, p3}, Lcom/android/server/gesture/EdgeGestureTracker;->setSensitivity(I)V

    .line 120
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v4, v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    .line 121
    iget v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    if-ge v2, v4, :cond_0

    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    cmpg-float v4, v1, v8

    if-gez v4, :cond_0

    .line 122
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v4}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 123
    return v9

    .line 126
    :cond_0
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v4, v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_1

    .line 127
    iget v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    cmpl-float v4, v0, v7

    if-lez v4, :cond_1

    cmpg-float v4, v0, v8

    if-gez v4, :cond_1

    .line 128
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v4}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 129
    return v9

    .line 132
    :cond_1
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v4, v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    .line 133
    iget v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    cmpl-float v4, v1, v7

    if-lez v4, :cond_2

    cmpg-float v4, v1, v8

    if-gez v4, :cond_2

    .line 134
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v4}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 135
    return v9

    .line 138
    :cond_2
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v4, v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_3

    .line 139
    iget v4, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mThickness:I

    if-ge v3, v4, :cond_3

    cmpl-float v4, v0, v7

    if-lez v4, :cond_3

    cmpg-float v4, v0, v8

    if-gez v4, :cond_3

    .line 140
    sget-object v4, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-direct {p0, p1, v4}, Lcom/android/server/gesture/EdgeGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/gesture/EdgeGesturePosition;)V

    .line 141
    return v9

    .line 144
    :cond_3
    return v6
.end method

.method public updateDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 103
    .local v0, "outSize":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 104
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayWidth:I

    .line 105
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureTracker;->mDisplayHeight:I

    .line 101
    return-void
.end method
