.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->isUsimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getUsimAdnRecordsSize()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getSimAdnRecordsSize(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getAnrCountsSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrFileCount:I

    return v0
.end method

.method public getEmailRecordsSize()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .local v1, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-nez v1, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    new-array v4, v6, [I

    .local v4, recordSizeTotal:[I
    const/4 v2, 0x0

    .local v2, num:I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFEmailInfo(I)I

    move-result v0

    .local v0, efid:I
    const/4 v6, -0x1

    if-ge v0, v6, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getSimAdnRecordsSize(I)[I

    move-result-object v3

    .local v3, recordSizeAdn:[I
    aget v6, v3, v8

    aput v6, v4, v8

    aget v6, v4, v9

    aget v7, v3, v9

    add-int/2addr v6, v7

    aput v6, v4, v9

    aget v6, v4, v10

    aget v7, v3, v10

    add-int/2addr v6, v7

    aput v6, v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSimAdnRecordsSize(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    return-object v2

    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getUsimAdnRecordsSize()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .local v1, mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    if-nez v1, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    new-array v4, v6, [I

    .local v4, recordSizeTotal:[I
    const/4 v2, 0x0

    .local v2, num:I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFInfo(I)I

    move-result v0

    .local v0, efid:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getSimAdnRecordsSize(I)[I

    move-result-object v3

    .local v3, recordSizeAdn:[I
    aget v6, v3, v8

    aput v6, v4, v8

    aget v6, v4, v9

    aget v7, v3, v9

    add-int/2addr v6, v7

    aput v6, v4, v9

    aget v6, v4, v10

    aget v7, v3, v10

    add-int/2addr v6, v7

    aput v6, v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
