.class final Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
.super Landroid/service/gesture/IEdgeGestureHostCallback$Stub;
.source "EdgeGestureService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeGestureActivationListenerRecord"
.end annotation


# instance fields
.field public final listener:Landroid/service/gesture/IEdgeGestureActivationListener;

.field private mActive:Z

.field public positions:I

.field public sensitivity:I

.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z
    .locals 1
    .param p1, "positionFlag"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->eligibleForActivation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->updateFlags(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p2, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureHostCallback$Stub;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 85
    return-void
.end method

.method private eligibleForActivation(I)Z
    .locals 2
    .param p1, "positionFlag"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    const/4 v4, 0x0

    .line 104
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 107
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->INDEX:I

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/service/gesture/IEdgeGestureActivationListener;->onEdgeGestureActivation(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v2, "Failed to notify process, assuming it died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iput-boolean v4, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->binderDied()V

    goto :goto_0
.end method

.method private updateFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 95
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 96
    const/high16 v0, 0x70000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    .line 94
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0, p0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap1(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    .line 90
    return-void
.end method

.method public dropEventsUntilLift()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dropSequence()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPositions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    move-result v0

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v0
.end method

.method public restoreListenerState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 146
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get2(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 139
    :cond_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
