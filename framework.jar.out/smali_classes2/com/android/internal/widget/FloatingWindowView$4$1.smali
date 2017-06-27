.class Lcom/android/internal/widget/FloatingWindowView$4$1;
.super Ljava/lang/Object;
.source "FloatingWindowView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingWindowView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingWindowView$4;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menu_item1:Ljava/lang/String;

.field final synthetic val$menu_item2:Ljava/lang/String;

.field final synthetic val$menu_item3:Ljava/lang/String;

.field final synthetic val$menu_item4:Ljava/lang/String;

.field final synthetic val$menu_item5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingWindowView$4;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingWindowView$4;
    .param p2, "val$menu_item1"    # Ljava/lang/String;
    .param p3, "val$activity"    # Landroid/app/Activity;
    .param p4, "val$menu_item2"    # Ljava/lang/String;
    .param p5, "val$menu_item3"    # Ljava/lang/String;
    .param p6, "val$menu_item4"    # Ljava/lang/String;
    .param p7, "val$menu_item5"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->this$1:Lcom/android/internal/widget/FloatingWindowView$4;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item2:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item3:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item4:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->forceSnap(I)V

    .line 157
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->forceSnap(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->forceSnap(I)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->forceSnap(I)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$menu_item5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->sendAppLaunchBroadcast()V

    goto :goto_0
.end method
