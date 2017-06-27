.class Landroid/app/Activity$3;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->setProgressLayoutApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .prologue
    .line 3471
    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-wrap1(Landroid/app/Activity;)V

    .line 3473
    return-void
.end method
