.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private mFound:I

.field private final mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;

.field private final mTmpBoolean:Landroid/util/MutableBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteCursor;->-assertionsDisabled:Z

    .line 36
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 3
    .param p1, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p2, "editTable"    # Ljava/lang/String;
    .param p3, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 60
    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    .line 63
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 105
    if-nez p3, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 113
    :goto_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 114
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 116
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 118
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 104
    return-void

    .line 111
    :cond_1
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 90
    return-void
.end method

.method private fillWindow(IZ)V
    .locals 5
    .param p1, "requiredPos"    # I
    .param p2, "countAll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 201
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v3, :cond_1

    .line 202
    const/4 v0, 0x0

    .line 212
    .local v0, "firstOutside":I
    :cond_0
    if-ne p1, v0, :cond_2

    .line 214
    move v2, p1

    .line 220
    .local v2, "startPos":I
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-direct {p0, v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteCursor;->traverseQuery(IILandroid/database/CursorWindow;Z)V

    .line 198
    return-void

    .line 204
    .end local v0    # "firstOutside":I
    .end local v2    # "startPos":I
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    .line 205
    .local v1, "start":I
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int v0, v1, v3

    .line 206
    .restart local v0    # "firstOutside":I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 207
    return-void

    .line 217
    .end local v1    # "start":I
    :cond_2
    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    div-int/lit8 v3, v3, 0x3

    sub-int v3, p1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "startPos":I
    goto :goto_0
.end method

.method private traverseQuery(I)V
    .locals 2
    .param p1, "requiredPos"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/database/sqlite/SQLiteCursor;->traverseQuery(IILandroid/database/CursorWindow;Z)V

    .line 224
    return-void
.end method

.method private traverseQuery(IILandroid/database/CursorWindow;Z)V
    .locals 8
    .param p1, "startPos"    # I
    .param p2, "requiredPos"    # I
    .param p3, "w"    # Landroid/database/CursorWindow;
    .param p4, "countAll"    # Z

    .prologue
    .line 230
    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 231
    .local v5, "exhausted":Landroid/util/MutableBoolean;
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/util/MutableBoolean;->value:Z

    .line 232
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    move-object v1, p3

    move v2, p1

    move v3, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQuery;->traverse(Landroid/database/CursorWindow;IIZLandroid/util/MutableBoolean;)I

    move-result v7

    .line 233
    .local v7, "found":I
    if-eqz p3, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    .line 235
    const-string/jumbo v0, "SQLiteCursor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "SQLiteCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received count(*) from native_fill_window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-boolean v0, v5, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 241
    iput v7, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    iput v7, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 228
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v5    # "exhausted":Landroid/util/MutableBoolean;
    .end local v7    # "found":I
    :catch_0
    move-exception v6

    .line 250
    .local v6, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->closeWindow()V

    .line 251
    throw v6
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 301
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 297
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->deactivate()V

    .line 293
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 290
    return-void
.end method

.method protected finalize()V
    .locals 5

    .prologue
    const/16 v2, 0x3e8

    .line 355
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    .local v0, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, ", table = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    const-string/jumbo v4, ", query = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    if-le v0, v2, :cond_0

    move v0, v2

    .end local v0    # "len":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 359
    invoke-static {v2, v3}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 352
    return-void

    .line 368
    :catchall_0
    move-exception v2

    .line 369
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 368
    throw v2
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 11
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 258
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 259
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 260
    .local v1, "columns":[Ljava/lang/String;
    array-length v0, v1

    .line 261
    .local v0, "columnCount":I
    new-instance v5, Ljava/util/HashMap;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 262
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 263
    aget-object v7, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iput-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 269
    .end local v0    # "columnCount":I
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 270
    .local v6, "periodIndex":I
    if-eq v6, v10, :cond_2

    .line 271
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SQLiteCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requesting column name with table name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 277
    .local v4, "i":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 278
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    .line 280
    :cond_3
    return v10
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-ne v2, v3, :cond_0

    .line 168
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v2, :cond_1

    .line 169
    invoke-direct {p0, v1, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(IZ)V

    .line 174
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/database/sqlite/SQLiteCursor;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-eq v2, v3, :cond_2

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_1
    invoke-direct {p0, v1, v1, v4, v0}, Landroid/database/sqlite/SQLiteCursor;->traverseQuery(IILandroid/database/CursorWindow;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected isAfterLast(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    if-ge p1, v2, :cond_0

    .line 182
    return v1

    .line 183
    :cond_0
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 184
    return v0

    .line 188
    :cond_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v2, :cond_3

    .line 189
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(IZ)V

    .line 193
    :goto_0
    sget-boolean v2, Landroid/database/sqlite/SQLiteCursor;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    if-lez v2, :cond_4

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_3
    invoke-direct {p0, v1, p1, v4, v1}, Landroid/database/sqlite/SQLiteCursor;->traverseQuery(IILandroid/database/CursorWindow;Z)V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 193
    goto :goto_1

    .line 194
    :cond_5
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    if-lt p1, v2, :cond_6

    :goto_2
    return v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "newPosition should be in the window at this point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected onMoveWithBoundsCheck(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-lt p1, v0, :cond_0

    .line 143
    return v3

    .line 144
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    if-lt p1, v0, :cond_1

    .line 146
    invoke-direct {p0, p1, v2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(IZ)V

    .line 147
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFound:I

    if-lt p1, v0, :cond_4

    .line 148
    return v3

    .line 150
    :cond_1
    if-gez p1, :cond_2

    .line 151
    const/4 v0, 0x2

    return v0

    .line 152
    :cond_2
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    if-ne p1, v0, :cond_3

    .line 153
    const/4 v0, 0x3

    return v0

    .line 155
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(IZ)V

    .line 158
    :cond_4
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteCursor;->onMove(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 159
    const/4 v0, 0x4

    return v0

    .line 161
    :cond_5
    return v2
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    return v4

    .line 311
    :cond_0
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    .line 313
    return v4

    .line 316
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V

    .line 319
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 320
    const/4 v1, -0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 322
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQuery;->onRequery()V

    .line 323
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v1, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 327
    :try_start_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    return v1

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "SQLiteCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requery() failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return v4
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 336
    return-void
.end method
