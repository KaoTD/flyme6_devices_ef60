.class Lcom/android/internal/widget/FloatingWindowView$1;
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
    .line 97
    iput-object p1, p0, Lcom/android/internal/widget/FloatingWindowView$1;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingWindowView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 98
    return-void
.end method
