.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$ACT;,
        Lcom/android/internal/telephony/OperatorInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public act:Lcom/android/internal/telephony/OperatorInfo$ACT;

.field private operatorAlphaLong:Ljava/lang/String;

.field private operatorAlphaShort:Ljava/lang/String;

.field private operatorNumeric:Ljava/lang/String;

.field private state:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Lcom/android/internal/telephony/OperatorInfo$ACT;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"
    .parameter "act"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->act:Lcom/android/internal/telephony/OperatorInfo$ACT;

    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object p5, p0, Lcom/android/internal/telephony/OperatorInfo;->act:Lcom/android/internal/telephony/OperatorInfo$ACT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"
    .parameter "actmode"

    .prologue
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-static {p5}, Lcom/android/internal/telephony/OperatorInfo;->actModetoMode(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$ACT;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Lcom/android/internal/telephony/OperatorInfo$ACT;)V

    return-void
.end method

.method private static actModetoMode(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$ACT;
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMCOMPACT:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMWEGPRS:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_2
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_3
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_5
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPAHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACT impl error: Invalid ACT mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    :cond_2
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ACTtoString(Lcom/android/internal/telephony/OperatorInfo$ACT;)Ljava/lang/String;
    .locals 3
    .parameter "act"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSM:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMCOMPACT:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->GSMWEGPRS:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "3"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "4"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "5"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$ACT;->UTRANWHSDPAHSUPA:Lcom/android/internal/telephony/OperatorInfo$ACT;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/OperatorInfo$ACT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "6"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACT to string error: Invalid ACT mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAct()Lcom/android/internal/telephony/OperatorInfo$ACT;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->act:Lcom/android/internal/telephony/OperatorInfo$ACT;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method