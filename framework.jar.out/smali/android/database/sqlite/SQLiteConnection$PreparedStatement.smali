.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreparedStatement"
.end annotation


# static fields
.field public static final RESET:I = -0x1


# instance fields
.field public mInCache:Z

.field public mInUse:Z

.field public mLastBindArgs:[Ljava/lang/Object;

.field public mLastClient:Ljava/lang/ref/WeakReference;

.field public mNumParameters:I

.field public mNumSteps:I

.field public mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field public mReadOnly:Z

.field public mSql:Ljava/lang/String;

.field public mStatementPtr:J

.field public mType:I

.field public final mWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field public final owner:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1, "owner"    # Landroid/database/sqlite/SQLiteConnection;

    .prologue
    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mWeak:Ljava/lang/ref/WeakReference;

    .line 1401
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->owner:Landroid/database/sqlite/SQLiteConnection;

    .line 1400
    return-void
.end method
