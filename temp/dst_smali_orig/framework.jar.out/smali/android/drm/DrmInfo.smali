.class public Landroid/drm/DrmInfo;
.super Ljava/lang/Object;
.source "DrmInfo.java"


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private final mInfoType:I

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "infoType"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Landroid/drm/DrmUtils;->readBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmInfo;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    goto :goto_0
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 1
    .parameter "infoType"
    .parameter "data"
    .parameter "mimeType"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/drm/DrmInfo;->mData:[B

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    return-object v0
.end method

.method public getInfoType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
