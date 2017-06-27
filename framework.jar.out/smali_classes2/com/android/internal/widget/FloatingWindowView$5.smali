.class Lcom/android/internal/widget/FloatingWindowView$5;
.super Ljava/lang/Object;
.source "FloatingWindowView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingWindowView;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingWindowView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/FloatingWindowView;
    .param p2, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/widget/FloatingWindowView$5;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setTouchViewDown(FF)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->updateFocusApp()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangedPreviousRange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setPreviousTouchRange(FF)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setChangedPreviousRange(Z)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->changeFlagsLayoutParams()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setTouchViewMove(FF)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRestorePosition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->moveRangeAboveLimit(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->restoreOldPosition()Z

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showSnap(II)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setChangedFlags(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isValidSnap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTimeoutDone()Z

    move-result v0

    .line 192
    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/Activity;->finishSnap(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->discardTimeout()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setChangedPreviousRange(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 192
    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
