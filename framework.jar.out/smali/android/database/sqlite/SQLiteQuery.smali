.class public final Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private mLastStmt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumRowsFound:Landroid/util/MutableInt;

.field private final mWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v2, p3}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 39
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mNumRowsFound:Landroid/util/MutableInt;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mWeak:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object v2, p0, Landroid/database/sqlite/SQLiteQuery;->mLastStmt:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p3, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 43
    return-void
.end method

.method private final setLastStmt(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "stmt":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mLastStmt:Ljava/lang/ref/WeakReference;

    if-ne v0, p1, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mLastStmt:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mLastStmt:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteQuery;->mWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteSession;->releaseStmtRef(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 98
    :cond_1
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQuery;->mLastStmt:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQuery;->setLastStmt(Ljava/lang/ref/WeakReference;)V

    .line 112
    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 110
    return-void
.end method

.method deactivate()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQuery;->setLastStmt(Ljava/lang/ref/WeakReference;)V

    .line 105
    return-void
.end method

.method onRequery()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQuery;->setLastStmt(Ljava/lang/ref/WeakReference;)V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method traverse(Landroid/database/CursorWindow;IIZLandroid/util/MutableBoolean;)I
    .locals 15
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "startPos"    # I
    .param p3, "requiredPos"    # I
    .param p4, "countAllRows"    # Z
    .param p5, "exhausted"    # Landroid/util/MutableBoolean;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 69
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    .line 74
    iget-object v8, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v10, p0, Landroid/database/sqlite/SQLiteQuery;->mNumRowsFound:Landroid/util/MutableInt;

    iget-object v11, p0, Landroid/database/sqlite/SQLiteQuery;->mWeak:Ljava/lang/ref/WeakReference;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 72
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v14

    .line 75
    .local v14, "stmt":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-direct {p0, v14}, Landroid/database/sqlite/SQLiteQuery;->setLastStmt(Ljava/lang/ref/WeakReference;)V

    .line 76
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mNumRowsFound:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 76
    return v0

    .line 80
    .end local v14    # "stmt":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    :catch_0
    move-exception v13

    .line 81
    .local v13, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string/jumbo v0, "SQLiteQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .end local v13    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 84
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/CursorWindow;->releaseReference()V

    .line 83
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 86
    throw v0

    .line 77
    :catch_1
    move-exception v12

    .line 78
    .local v12, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->onCorruption()V

    .line 79
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
