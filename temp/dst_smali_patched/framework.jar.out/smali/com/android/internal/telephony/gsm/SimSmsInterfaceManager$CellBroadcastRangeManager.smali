.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 9
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    const/4 v6, 0x0

    .local v6, find:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setSelected(Z)V

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v7           #i:I
    :cond_1
    if-nez v6, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v3, 0x0

    const/16 v4, 0xff

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected finishUpdate()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .local v0, configs:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method protected startUpdate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
