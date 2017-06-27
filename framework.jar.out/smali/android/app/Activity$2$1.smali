.class Landroid/app/Activity$2$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/Activity$2;


# direct methods
.method constructor <init>(Landroid/app/Activity$2;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/Activity$2;

    .prologue
    .line 3415
    iput-object p1, p0, Landroid/app/Activity$2$1;->this$1:Landroid/app/Activity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3418
    iget-object v0, p0, Landroid/app/Activity$2$1;->this$1:Landroid/app/Activity$2;

    iget-object v0, v0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/Activity;->-set1(Landroid/app/Activity;Z)Z

    .line 3419
    iget-object v0, p0, Landroid/app/Activity$2$1;->this$1:Landroid/app/Activity$2;

    iget-object v0, v0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Activity;->-set0(Landroid/app/Activity;Z)Z

    .line 3417
    return-void
.end method
