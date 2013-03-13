.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_REC_ID:I = 0x1

.field static final ADN_SFI:I = 0x0

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field static final NONE_TYPE1_DATA_LENGTH:I = 0x11

.field static final TYPE1_DATA_LENGTH:I = 0xf


# instance fields
.field aas:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field gas:Ljava/lang/String;

.field grp:Ljava/lang/String;

.field index:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "sne"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "aas"
    .parameter "sne"
    .parameter "grp"
    .parameter "gas"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "sne"

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "aas"
    .parameter "sne"
    .parameter "grp"
    .parameter "gas"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    return-void
.end method

.method private parseRecord([B)V
    .locals 8
    .parameter "record"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0xe

    invoke-static {p1, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    array-length v4, p1

    add-int/lit8 v1, v4, -0xe

    .local v1, footerOffset:I
    array-length v4, p1

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .local v3, numlen:I
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .end local v3           #numlen:I
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .end local v1           #footerOffset:I
    :goto_1
    return-void

    .restart local v1       #footerOffset:I
    :cond_0
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0xb

    invoke-static {p1, v4, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #footerOffset:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "GSM"

    const-string v5, "Error parsing AdnRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_1

    .end local v0           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #footerOffset:I
    :cond_1
    :try_start_1
    aget-byte v4, p1, v1

    and-int/lit16 v2, v4, 0xff

    .local v2, numberLength:I
    if-le v2, v7, :cond_2

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .parameter "recordSize"

    .prologue
    const/4 v7, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    add-int/lit8 v5, p1, -0xe

    .local v5, footerOffset:I
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter buildAdnString, recordSize is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p1, [B

    .local v0, adnString:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_0

    aput-byte v12, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "GSM"

    const-string v8, "[buildAdnString] Empty dialing number"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #adnString:[B
    .end local v2           #byteTag:[B
    :cond_1
    :goto_1
    return-object v0

    .restart local v0       #adnString:[B
    :catch_0
    move-exception v3

    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v0, v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v2           #byteTag:[B
    :catch_1
    move-exception v4

    .local v4, ex2:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "[AdnRecord]alphaTag convert byte excepiton"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #ex2:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_3

    const-string v8, "GSM"

    const-string v9, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_4

    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[buildAdnString] Max length of tag is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, bcdNumber:[B
    add-int/lit8 v7, v5, 0x1

    array-length v8, v1

    invoke-static {v1, v11, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v5, 0x0

    array-length v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v5, 0xc

    aput-byte v12, v0, v7

    add-int/lit8 v7, v5, 0xd

    aput-byte v12, v0, v7

    .end local v1           #bcdNumber:[B
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .end local v2           #byteTag:[B
    :catch_2
    move-exception v3

    .restart local v3       #ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v0, v7
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .end local v2           #byteTag:[B
    :catch_3
    move-exception v4

    .restart local v4       #ex2:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "[AdnRecord]alphaTag convert byte excepiton"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public buildAnrString(IIII)[B
    .locals 10
    .parameter "recordSize"
    .parameter "anrCount"
    .parameter "efid"
    .parameter "adnNum"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x0

    .local v1, anrRecord:Ljava/lang/String;
    const-string v5, "GSM"

    const-string v6, "enter buildAnrString"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, p1, [B

    .local v2, anrString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    aput-byte v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, "&&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "GSM"

    const-string v6, "[buildAnrString] anr number is empty. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2

    :cond_2
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, ret:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_3
    aget-object v1, v4, p2

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anrRecord = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GSM"

    const-string v6, "[buildAnrString] anrRecord is empty. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_5

    const-string v5, "GSM"

    const-string v6, "[buildAnrString] Max length of dailing number is 20"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    aput-byte v9, v2, v9

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, anrNumber:[B
    const/4 v5, 0x1

    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x2

    array-length v6, v0

    invoke-static {v0, v9, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0xf

    if-le p1, v5, :cond_6

    add-int/lit8 v5, p1, -0x4

    aput-byte v8, v2, v5

    add-int/lit8 v5, p1, -0x3

    aput-byte v8, v2, v5

    add-int/lit8 v5, p1, -0x2

    int-to-byte v6, p3

    aput-byte v6, v2, v5

    add-int/lit8 v5, p1, -0x1

    int-to-byte v6, p4

    aput-byte v6, v2, v5

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v5, p1, -0x2

    aput-byte v8, v2, v5

    add-int/lit8 v5, p1, -0x1

    aput-byte v8, v2, v5

    goto/16 :goto_1
.end method

.method public buildEmailString(IIII)[B
    .locals 11
    .parameter "recordSize"
    .parameter "recordSeq"
    .parameter "efid"
    .parameter "adnNum"

    .prologue
    const/4 v10, 0x0

    add-int/lit8 v5, p1, -0x2

    .local v5, footerOffset:I
    new-array v2, p1, [B

    .local v2, emailString:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_0

    const/4 v7, -0x1

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v7, :cond_1

    :goto_1
    return-object v2

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v7, p2

    .local v1, emailRecord:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildEmailString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v8, v5, 0x2

    if-le v7, v8, :cond_2

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/GsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #byteTag:[B
    :cond_3
    :goto_2
    add-int/lit8 v7, v5, 0x0

    int-to-byte v8, p3

    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v8, p4

    aput-byte v8, v2, v7

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildEmailString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v7, "utf-16be"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #byteTag:[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v0

    invoke-static {v0, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v2, v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v0           #byteTag:[B
    :catch_1
    move-exception v4

    .local v4, ex2:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "[AdnRecord]emailRecord convert byte exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public buildIapString(II)[B
    .locals 5
    .parameter "recordSize"
    .parameter "recNum"

    .prologue
    const/4 v2, 0x0

    .local v2, iapString:[B
    add-int/lit8 v0, p1, -0xe

    .local v0, footerOffset:I
    const-string v3, "GSM"

    const-string v4, "enter buildIapString"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, p1, [B

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    return-object v2
.end method

.method public buildSneString(III)[B
    .locals 8
    .parameter "recordSize"
    .parameter "efid"
    .parameter "adnNum"

    .prologue
    const-string v5, "GSM"

    const-string v6, "enter buildSneString"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, p1, [B

    .local v4, sneString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    const/4 v5, -0x1

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, byteTag:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #byteTag:[B
    :goto_1
    const/16 v5, 0xf

    if-le p1, v5, :cond_1

    add-int/lit8 v5, p1, -0x2

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    add-int/lit8 v5, p1, -0x1

    int-to-byte v6, p3

    aput-byte v6, v4, v5

    :cond_1
    return-object v4

    :catch_0
    move-exception v1

    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const-string v6, "utf-16be"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #byteTag:[B
    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0           #byteTag:[B
    :catch_1
    move-exception v2

    .local v2, ex2:Ljava/io/UnsupportedEncodingException;
    const-string v5, "GSM"

    const-string v6, "[sAdnRecord]alphaTag convert byte excepiton"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAas()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getGas()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    return-object v0
.end method

.method public getGrp()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAas(Ljava/lang/String;)V
    .locals 0
    .parameter "aas"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-void
.end method

.method public setGas(Ljava/lang/String;)V
    .locals 0
    .parameter "gas"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    return-void
.end method

.method public setGrp(Ljava/lang/String;)V
    .locals 0
    .parameter "grp"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->index:I

    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .parameter "sne"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->aas:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->grp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->gas:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
