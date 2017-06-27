.class final Lorg/tekos/TextViewUndoRedo$EditHistory;
.super Ljava/lang/Object;
.source "TextViewUndoRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tekos/TextViewUndoRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditHistory"
.end annotation


# instance fields
.field private final mmHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/tekos/TextViewUndoRedo$EditItem;",
            ">;"
        }
    .end annotation
.end field

.field private mmMaxHistorySize:I

.field private mmPosition:I

.field final synthetic this$0:Lorg/tekos/TextViewUndoRedo;


# direct methods
.method static synthetic -get0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get1(Lorg/tekos/TextViewUndoRedo$EditHistory;)I
    .locals 1

    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    return v0
.end method

.method static synthetic -get2(Lorg/tekos/TextViewUndoRedo$EditHistory;)I
    .locals 1

    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    return v0
.end method

.method static synthetic -set0(Lorg/tekos/TextViewUndoRedo$EditHistory;I)I
    .locals 0

    iput p1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    return p1
.end method

.method static synthetic -set1(Lorg/tekos/TextViewUndoRedo$EditHistory;I)I
    .locals 0

    iput p1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lorg/tekos/TextViewUndoRedo$EditHistory;)Lorg/tekos/TextViewUndoRedo$EditItem;
    .locals 1

    invoke-direct {p0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->getNext()Lorg/tekos/TextViewUndoRedo$EditItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/tekos/TextViewUndoRedo$EditHistory;)Lorg/tekos/TextViewUndoRedo$EditItem;
    .locals 1

    invoke-direct {p0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->getPrevious()Lorg/tekos/TextViewUndoRedo$EditItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/tekos/TextViewUndoRedo$EditHistory;Lorg/tekos/TextViewUndoRedo$EditItem;)V
    .locals 0
    .param p1, "item"    # Lorg/tekos/TextViewUndoRedo$EditItem;

    .prologue
    invoke-direct {p0, p1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->add(Lorg/tekos/TextViewUndoRedo$EditItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/tekos/TextViewUndoRedo$EditHistory;)V
    .locals 0

    invoke-direct {p0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->clear()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/tekos/TextViewUndoRedo$EditHistory;I)V
    .locals 0
    .param p1, "maxHistorySize"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/tekos/TextViewUndoRedo$EditHistory;->setMaxHistorySize(I)V

    return-void
.end method

.method private constructor <init>(Lorg/tekos/TextViewUndoRedo;)V
    .locals 1
    .param p1, "this$0"    # Lorg/tekos/TextViewUndoRedo;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->this$0:Lorg/tekos/TextViewUndoRedo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    .line 262
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lorg/tekos/TextViewUndoRedo;Lorg/tekos/TextViewUndoRedo$EditHistory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/tekos/TextViewUndoRedo;

    .prologue
    invoke-direct {p0, p1}, Lorg/tekos/TextViewUndoRedo$EditHistory;-><init>(Lorg/tekos/TextViewUndoRedo;)V

    return-void
.end method

.method private add(Lorg/tekos/TextViewUndoRedo$EditItem;)V
    .locals 2
    .param p1, "item"    # Lorg/tekos/TextViewUndoRedo$EditItem;

    .prologue
    .line 278
    :goto_0
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    if-le v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 284
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    if-ltz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->trimHistory()V

    .line 277
    :cond_1
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 269
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 267
    return-void
.end method

.method private getNext()Lorg/tekos/TextViewUndoRedo$EditItem;
    .locals 3

    .prologue
    .line 331
    iget v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    iget-object v2, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 332
    const/4 v1, 0x0

    return-object v1

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    iget v2, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tekos/TextViewUndoRedo$EditItem;

    .line 336
    .local v0, "item":Lorg/tekos/TextViewUndoRedo$EditItem;
    iget v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 337
    return-object v0
.end method

.method private getPrevious()Lorg/tekos/TextViewUndoRedo$EditItem;
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 323
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    iget v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tekos/TextViewUndoRedo$EditItem;

    return-object v0
.end method

.method private setMaxHistorySize(I)V
    .locals 1
    .param p1, "maxHistorySize"    # I

    .prologue
    .line 294
    iput p1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    .line 295
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    if-ltz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lorg/tekos/TextViewUndoRedo$EditHistory;->trimHistory()V

    .line 293
    :cond_0
    return-void
.end method

.method private trimHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    :goto_0
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmMaxHistorySize:I

    if-le v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 306
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    goto :goto_0

    .line 309
    :cond_0
    iget v0, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    if-gez v0, :cond_1

    .line 310
    iput v2, p0, Lorg/tekos/TextViewUndoRedo$EditHistory;->mmPosition:I

    .line 303
    :cond_1
    return-void
.end method
