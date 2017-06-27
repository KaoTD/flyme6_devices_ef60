.class Lcom/android/internal/widget/FloatingWindowView$2;
.super Ljava/lang/Object;
.source "FloatingWindowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/android/internal/widget/FloatingWindowView$2;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingWindowView$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->restorePreviousLayoutApp()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$2;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingWindowView;->-get1(Lcom/android/internal/widget/FloatingWindowView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$2;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingWindowView;->-get0(Lcom/android/internal/widget/FloatingWindowView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 106
    return-void
.end method
