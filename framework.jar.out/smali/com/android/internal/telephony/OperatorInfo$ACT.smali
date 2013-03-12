.class public final enum Lcom/android/internal/telephony/OperatorInfo$ACT;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo$ACT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum GSMCOMPACT:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum GSMWEGPRS:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum UTRAN:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum UTRANWHSDPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum UTRANWHSDPAHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field public static final enum UTRANWHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "GSMCOMPACT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMCOMPACT:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "UTRAN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "GSMWEGPRS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMWEGPRS:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "UTRANWHSDPA"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "UTRANWHSUPA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    const-string v1, "UTRANWHSDPAHSUPA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$ACT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPAHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/OperatorInfo$ACT;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMCOMPACT:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMWEGPRS:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPAHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$ACT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$ACT;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$ACT;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$ACT;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$ACT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$ACT;

    return-object v0
.end method
