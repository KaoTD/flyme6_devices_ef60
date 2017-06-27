.class Landroid/app/Activity$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastSpanX:F

.field private lastSpanY:F

.field private params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .prologue
    .line 3544
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 3561
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    .line 3562
    .local v2, "spanX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    .line 3563
    .local v3, "spanY":F
    iget v4, p0, Landroid/app/Activity$1;->lastSpanX:F

    div-float v4, v2, v4

    iget-object v5, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float v1, v4, v5

    .line 3564
    .local v1, "newWidth":F
    iget v4, p0, Landroid/app/Activity$1;->lastSpanY:F

    div-float v4, v3, v4

    iget-object v5, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 3565
    .local v0, "newHeight":F
    iget-object v4, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    float-to-int v5, v1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3566
    iget-object v4, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    float-to-int v5, v0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3567
    iget-object v4, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v4}, Landroid/app/Activity;->-get0(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3568
    iput v2, p0, Landroid/app/Activity$1;->lastSpanX:F

    .line 3569
    iput v3, p0, Landroid/app/Activity$1;->lastSpanY:F

    .line 3570
    const/4 v4, 0x1

    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 3552
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-wrap0(Landroid/app/Activity;)V

    .line 3553
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    iput v0, p0, Landroid/app/Activity$1;->lastSpanX:F

    .line 3554
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    iput v0, p0, Landroid/app/Activity$1;->lastSpanY:F

    .line 3555
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-get0(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity$1;->params:Landroid/view/WindowManager$LayoutParams;

    .line 3556
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 3575
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-wrap2(Landroid/app/Activity;)V

    .line 3574
    return-void
.end method
