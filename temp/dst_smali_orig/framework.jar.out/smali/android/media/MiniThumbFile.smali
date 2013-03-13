.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final FILE_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static mSingle:Landroid/media/MiniThumbFile;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MiniThumbFile;->FILE_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private getFilePath(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MiniThumbFile;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/microthumbdata-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 2
    .parameter "uri"

    .prologue
    const-class v1, Landroid/media/MiniThumbFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MiniThumbFile;

    invoke-direct {v0, p0}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;

    :cond_0
    sget-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    const-class v1, Landroid/media/MiniThumbFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;

    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V

    const/4 v0, 0x0

    sput-object v0, Landroid/media/MiniThumbFile;->mSingle:Landroid/media/MiniThumbFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 12
    .parameter "id"

    .prologue
    monitor-enter p0

    const/4 v9, 0x0

    .local v9, lock:Ljava/nio/channels/FileLock;
    const/4 v7, 0x0

    .local v7, f:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFilePath(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v8, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .local v8, f:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, channel:Ljava/nio/channels/FileChannel;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v9

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .local v10, magic:J
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMagic# id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s magic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_0
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    move-object v7, v8

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v8           #f:Ljava/io/RandomAccessFile;
    .end local v10           #magic:J
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    :goto_1
    monitor-exit p0

    return-wide v10

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :cond_1
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    :goto_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v1, "MiniThumbFile"

    const-string v2, "read file failed, need to create Magic"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    :goto_6
    monitor-exit p0

    throw v1

    :catch_3
    move-exception v2

    goto :goto_5

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v1

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    .restart local v10       #magic:J
    :catch_5
    move-exception v1

    goto :goto_0

    .end local v10           #magic:J
    :catchall_3
    move-exception v1

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_6
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .parameter "id"
    .parameter "data"

    .prologue
    monitor-enter p0

    const/4 v13, 0x0

    .local v13, lock:Ljava/nio/channels/FileLock;
    const/4 v9, 0x0

    .local v9, f:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getFilePath(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v10, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .local v10, f:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .local v2, channel:Ljava/nio/channels/FileChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v16

    .local v16, size:I
    const/16 v3, 0xd

    move/from16 v0, v16

    if-le v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .local v11, flag:B
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .local v14, magic:J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .local v12, length:I
    add-int/lit8 v3, v12, 0xd

    move/from16 v0, v16

    if-lt v0, v3, :cond_1

    move-object/from16 v0, p3

    array-length v3, v0

    if-lt v3, v12, :cond_1

    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v4, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_0

    :try_start_2
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V

    :cond_0
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    move-object v9, v10

    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v10           #f:Ljava/io/RandomAccessFile;
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    .end local v16           #size:I
    .end local p3
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    :goto_1
    monitor-exit p0

    return-object p3

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #channel:Ljava/nio/channels/FileChannel;
    .restart local v10       #f:Ljava/io/RandomAccessFile;
    .restart local v16       #size:I
    .restart local p3
    :cond_1
    if-eqz v13, :cond_2

    :try_start_3
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v10           #f:Ljava/io/RandomAccessFile;
    .end local v16           #size:I
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    :goto_2
    const/16 p3, 0x0

    goto :goto_1

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #channel:Ljava/nio/channels/FileChannel;
    .restart local v10       #f:Ljava/io/RandomAccessFile;
    .restart local v16       #size:I
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10           #f:Ljava/io/RandomAccessFile;
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v16           #size:I
    :catch_1
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v3, "MiniThumbFile"

    const-string v4, "read file failed, need to create MiniThumbFile"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_3

    :try_start_5
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V

    :cond_3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v13, :cond_4

    :try_start_6
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :goto_6
    monitor-exit p0

    throw v3

    :catch_3
    move-exception v4

    goto :goto_5

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .restart local v10       #f:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    move-object v9, v10

    .end local v10           #f:Ljava/io/RandomAccessFile;
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .restart local v10       #f:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10           #f:Ljava/io/RandomAccessFile;
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v9           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #channel:Ljava/nio/channels/FileChannel;
    .restart local v10       #f:Ljava/io/RandomAccessFile;
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v14       #magic:J
    .restart local v16       #size:I
    :catch_5
    move-exception v3

    goto :goto_0

    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :catchall_3
    move-exception v3

    move-object v9, v10

    .end local v10           #f:Ljava/io/RandomAccessFile;
    .restart local v9       #f:Ljava/io/RandomAccessFile;
    goto :goto_6
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 10
    .parameter "data"
    .parameter "id"
    .parameter "magic"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0xd

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    const-string v1, "MiniThumbFile"

    const-string v2, "saveMiniThumbToFile# data is to long, return directly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    const/4 v9, 0x0

    .local v9, lock:Ljava/nio/channels/FileLock;
    const/4 v7, 0x0

    .local v7, f:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->getFilePath(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v8, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .local v8, f:Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, channel:Ljava/nio/channels/FileChannel;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v9

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v1, "MiniThumbFile"

    const-string v2, "write file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    move-exception v2

    goto :goto_3

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v1

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v7           #f:Ljava/io/RandomAccessFile;
    .restart local v8       #f:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/RandomAccessFile;
    .restart local v7       #f:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
