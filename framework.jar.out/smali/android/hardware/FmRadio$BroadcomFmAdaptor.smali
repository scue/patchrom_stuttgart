.class Landroid/hardware/FmRadio$BroadcomFmAdaptor;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Lcom/broadcom/fm/FmReceiver$ICallbacks;
.implements Landroid/hardware/FmRadio$IFmAdaptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcomFmAdaptor"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/broadcom/fm/FmReceiver;

.field final synthetic this$0:Landroid/hardware/FmRadio;


# direct methods
.method constructor <init>(Landroid/hardware/FmRadio;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 305
    iput-object p1, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/broadcom/fm/FmReceiver;

    invoke-direct {v0, p2, p0}, Lcom/broadcom/fm/FmReceiver;-><init>(Landroid/content/Context;Lcom/broadcom/fm/FmReceiver$ICallbacks;)V

    iput-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    .line 307
    iput-object p2, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mContext:Landroid/content/Context;

    .line 308
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "instant FmReceiver failed"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->cancel()I

    move-result v0

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isInternalAntennaAvailable()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->isAntenna()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->isMute()Z

    move-result v0

    return v0
.end method

.method public mute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    const/4 v2, 0x1

    .line 343
    if-eqz p1, :cond_0

    .line 344
    const-string v1, "fm_analog_in=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 354
    :goto_0
    iget-object v1, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/broadcom/fm/FmReceiver;->mute(Z)I

    move-result v1

    return v1

    .line 347
    :cond_0
    const-string v1, "fm_analog_in=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 348
    invoke-static {v2}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    .line 349
    .local v0, old:I
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 350
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 351
    const-string/jumbo v1, "testFM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old force use is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCancelEvent()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/FmRadio$IEventCallbacks;->onCancelEvent()V

    .line 484
    return-void
.end method

.method public onScanEvent(I)V
    .locals 1
    .parameter "frequencyKHz"

    .prologue
    .line 471
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IEventCallbacks;->onScanEvent(I)V

    .line 472
    return-void
.end method

.method public onSearchingEvent()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/FmRadio$IEventCallbacks;->onSearchingEvent()V

    .line 478
    return-void
.end method

.method public onSeekEvent(I)V
    .locals 1
    .parameter "frequencyKHz"

    .prologue
    .line 465
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IEventCallbacks;->onSeekEvent(I)V

    .line 466
    return-void
.end method

.method public onStereoEvent(Z)V
    .locals 1
    .parameter "stereo"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IEventCallbacks;->onStereoEvent(Z)V

    .line 460
    return-void
.end method

.method public onTuneEvent(I)V
    .locals 1
    .parameter "frequencyKHz"

    .prologue
    .line 453
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IEventCallbacks;->onTuneEvent(I)V

    .line 454
    return-void
.end method

.method public onTurnOffEvent()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v1}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/FmRadio$IEventCallbacks;->onTurnOffEvent()V

    .line 441
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 442
    .local v0, fmPowerManager:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Landroid/hardware/FmRadio;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNABLE TO TURN OFF FM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->disableFm()Z

    goto :goto_0
.end method

.method public onTurnOnEvent()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->this$0:Landroid/hardware/FmRadio;

    #getter for: Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;
    invoke-static {v0}, Landroid/hardware/FmRadio;->access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/FmRadio$IEventCallbacks;->onTurnOnEvent()V

    .line 435
    return-void
.end method

.method public scan(I)I
    .locals 2
    .parameter "direction"

    .prologue
    .line 379
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/broadcom/fm/FmReceiver;->scan(I)I

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 382
    :cond_0
    if-nez p1, :cond_1

    .line 384
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/fm/FmReceiver;->scan(I)I

    move-result v0

    goto :goto_0

    .line 386
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public seek(I)I
    .locals 2
    .parameter "direction"

    .prologue
    .line 366
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/broadcom/fm/FmReceiver;->seek(I)I

    move-result v0

    .line 373
    :goto_0
    return v0

    .line 369
    :cond_0
    if-nez p1, :cond_1

    .line 371
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/fm/FmReceiver;->seek(I)I

    move-result v0

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setAnalogMode(Z)I
    .locals 1
    .parameter "analog"

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public setStereoMode(Z)I
    .locals 1
    .parameter "stereo"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/FmReceiver;->setStereo(Z)I

    move-result v0

    return v0
.end method

.method public tune(I)I
    .locals 1
    .parameter "frequencyKHz"

    .prologue
    .line 336
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/FmReceiver;->tune(I)I

    move-result v0

    return v0
.end method

.method public turnOff()I
    .locals 1

    .prologue
    .line 329
    const-string v0, "fm_analog_in=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/fm/FmReceiver;->turnOff()I

    move-result v0

    return v0
.end method

.method public turnOn()I
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 316
    .local v0, fmPowerManager:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Landroid/hardware/FmRadio;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNABLE TO TURN ON FM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x5

    .line 323
    :goto_0
    return v1

    .line 321
    :cond_0
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->enableFm()Z

    .line 323
    iget-object v1, p0, Landroid/hardware/FmRadio$BroadcomFmAdaptor;->mReceiver:Lcom/broadcom/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/fm/FmReceiver;->turnOn()I

    move-result v1

    goto :goto_0
.end method
