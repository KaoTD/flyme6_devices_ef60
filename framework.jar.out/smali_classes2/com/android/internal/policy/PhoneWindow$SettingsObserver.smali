.class final Lcom/android/internal/policy/PhoneWindow$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 287
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 286
    return-void
.end method


# virtual methods
.method checkGestures()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 310
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 311
    const-string/jumbo v4, "enable_stylus_gestures"

    .line 309
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->-set2(Lcom/android/internal/policy/PhoneWindow;Z)Z

    .line 308
    return-void

    :cond_0
    move v0, v1

    .line 309
    goto :goto_0
.end method

.method observe()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "enable_stylus_gestures"

    .line 292
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    const/4 v2, 0x0

    .line 292
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->checkGestures()V

    .line 290
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->checkGestures()V

    .line 304
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 298
    return-void
.end method
