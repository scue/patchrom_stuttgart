.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 6
    .parameter "efid"

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    .local v2, cardTypeUSIM:Z
    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    .local v1, cardTypeSIM:Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v3

    .local v3, path:Ljava/lang/String;
    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    const-string v4, "3F007F105F3A"

    goto :goto_0

    .end local v3           #path:Ljava/lang/String;
    :sswitch_0
    if-eqz v2, :cond_3

    const-string v4, "3F007FFF"

    goto :goto_0

    :cond_3
    const-string v4, "3F007F10"

    goto :goto_0

    :sswitch_1
    if-eqz v2, :cond_4

    const-string v4, "3F007FFF"

    goto :goto_0

    :cond_4
    const-string v4, "3F007F20"

    goto :goto_0

    :sswitch_2
    const-string v4, "3F007F20"

    goto :goto_0

    :sswitch_3
    const-string v4, "3F007F105F3A"

    goto :goto_0

    .restart local v3       #path:Ljava/lang/String;
    :cond_5
    const-string v4, "GSM"

    const-string v5, "Error: EF Path being returned in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v4, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_3
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f38 -> :sswitch_1
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_1
        0x6f49 -> :sswitch_0
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

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

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
