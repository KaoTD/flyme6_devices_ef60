.class Lcom/android/internal/widget/FloatingWindowView$4;
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

.field final synthetic val$menu_item1:Ljava/lang/String;

.field final synthetic val$menu_item2:Ljava/lang/String;

.field final synthetic val$menu_item3:Ljava/lang/String;

.field final synthetic val$menu_item4:Ljava/lang/String;

.field final synthetic val$menu_item5:Ljava/lang/String;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingWindowView;Landroid/widget/PopupMenu;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/FloatingWindowView;
    .param p2, "val$popupMenu"    # Landroid/widget/PopupMenu;
    .param p3, "val$menu_item1"    # Ljava/lang/String;
    .param p4, "val$activity"    # Landroid/app/Activity;
    .param p5, "val$menu_item2"    # Ljava/lang/String;
    .param p6, "val$menu_item3"    # Ljava/lang/String;
    .param p7, "val$menu_item4"    # Ljava/lang/String;
    .param p8, "val$menu_item5"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/widget/FloatingWindowView$4;->this$0:Lcom/android/internal/widget/FloatingWindowView;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$popupMenu:Landroid/widget/PopupMenu;

    iput-object p3, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item1:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item2:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item3:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item4:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v8, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$popupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lcom/android/internal/widget/FloatingWindowView$4$1;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item3:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item4:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$menu_item5:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/FloatingWindowView$4$1;-><init>(Lcom/android/internal/widget/FloatingWindowView$4;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/FloatingWindowView$4;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 142
    return-void
.end method
