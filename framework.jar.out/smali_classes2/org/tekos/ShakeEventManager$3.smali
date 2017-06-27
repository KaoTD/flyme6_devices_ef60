.class Lorg/tekos/ShakeEventManager$3;
.super Ljava/lang/Object;
.source "ShakeEventManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tekos/ShakeEventManager;->showUndoRedoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tekos/ShakeEventManager;


# direct methods
.method constructor <init>(Lorg/tekos/ShakeEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/ShakeEventManager;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/tekos/ShakeEventManager$3;->this$0:Lorg/tekos/ShakeEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/tekos/ShakeEventManager$3;->this$0:Lorg/tekos/ShakeEventManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tekos/ShakeEventManager;->-set0(Lorg/tekos/ShakeEventManager;Z)Z

    .line 171
    return-void
.end method
