.class Lorg/tekos/internal/BootDexoptDialog$1;
.super Ljava/lang/Object;
.source "BootDexoptDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tekos/internal/BootDexoptDialog;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tekos/internal/BootDexoptDialog;


# direct methods
.method constructor <init>(Lorg/tekos/internal/BootDexoptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/internal/BootDexoptDialog;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/tekos/internal/BootDexoptDialog$1;->this$0:Lorg/tekos/internal/BootDexoptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog$1;->this$0:Lorg/tekos/internal/BootDexoptDialog;

    invoke-static {v0}, Lorg/tekos/internal/BootDexoptDialog;->-get0(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog$1;->this$0:Lorg/tekos/internal/BootDexoptDialog;

    invoke-static {v0}, Lorg/tekos/internal/BootDexoptDialog;->-get1(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 118
    iget-object v0, p0, Lorg/tekos/internal/BootDexoptDialog$1;->this$0:Lorg/tekos/internal/BootDexoptDialog;

    invoke-static {v0}, Lorg/tekos/internal/BootDexoptDialog;->-get2(Lorg/tekos/internal/BootDexoptDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 113
    return-void
.end method
