.class Lcom/android/internal/telephony/ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "IccProvider.java"


# static fields
.field public static final mIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mMaxId:J


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/internal/telephony/ArrayListCursor;->mMaxId:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 11
    .parameter "columnNames"
    .parameter
    .parameter "queryType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    array-length v0, p1

    .local v0, colCount:I
    const/4 v1, 0x0

    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v5, p1, v2

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    iput-object p1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v6, p1

    invoke-static {p1, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, rowCount:I
    new-array v5, v4, [Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-ne p3, v10, :cond_2

    sget-object v5, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const-wide/16 v7, -0x1

    sput-wide v7, Lcom/android/internal/telephony/ArrayListCursor;->mMaxId:J

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    aput-object v5, v6, v2

    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v5, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ne p3, v10, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v5, v5, v2

    const-string v6, "index"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ArrayListCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, index:I
    sget-object v6, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    sput-wide v7, Lcom/android/internal/telephony/ArrayListCursor;->mMaxId:J

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v6, "ArrayListCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pengsj:after cursor ID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",Tag:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "index:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Map size:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/ArrayListCursor;->mIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #index:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v4           #rowCount:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .restart local v4       #rowCount:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3       #index:I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .end local v3           #index:I
    :cond_6
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 8
    .parameter "position"
    .parameter "window"

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    :try_start_0
    iget v5, p0, Landroid/database/AbstractCursor;->mPos:I

    .local v5, oldpos:I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ArrayListCursor;->getColumnCount()I

    move-result v1

    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_4

    instance-of v6, v2, [B

    if-eqz v6, :cond_3

    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .local v3, field:[B
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_0
    move-exception v6

    :goto_3
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, field:Ljava/lang/String;
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_4
    :try_start_2
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1

    .end local v2           #data:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4           #i:I
    :cond_6
    iput v5, p0, Landroid/database/AbstractCursor;->mPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "columnIndex"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "columnIndex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
