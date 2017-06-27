.class public final Lcom/android/internal/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final POLICY_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.Policy"

.field private static final sPolicy:Lcom/android/internal/policy/IPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    :try_start_0
    const-string/jumbo v4, "com.android.internal.policy.Policy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 39
    .local v3, "policyClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IPolicy;

    sput-object v4, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 48
    const-string/jumbo v5, "com.android.internal.policy.Policy could not be instantiated"

    .line 47
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 43
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 44
    .local v2, "ex":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 45
    const-string/jumbo v5, "com.android.internal.policy.Policy could not be instantiated"

    .line 44
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 42
    const-string/jumbo v5, "com.android.internal.policy.Policy could not be loaded"

    .line 41
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method
