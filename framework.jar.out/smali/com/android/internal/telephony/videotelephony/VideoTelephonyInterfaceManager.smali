.class public Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;
.super Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;
.source "VideoTelephonyInterfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTelephonynterfaceManager"

.field private static final VIDEO_TELEPHONY_DISCONNECTED:I = 0x2

.field private static final VIDEO_TELEPHONY_NEW_RINGING:I = 0x1

.field public static final VIDEO_TELEPHONY_RESULT_ANSWER_EXCEPTION:I = -0x4

.field public static final VIDEO_TELEPHONY_RESULT_CONNECTED:I = 0x78

.field public static final VIDEO_TELEPHONY_RESULT_DIAL_EXCEPTION:I = -0x1

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED:I = 0x79

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_BUSY:I = 0x65

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_INCOMING_MISSED:I = 0x74

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_INCOMING_REJECTED:I = 0x67

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_INVALID_NUMBER:I = 0x66

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_LOST_SIGNAL:I = 0x6f

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_NO_ANSWER:I = 0x64

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_OUT_OF_SERVICE:I = 0x69

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_POWER_OFF:I = 0x68

.field public static final VIDEO_TELEPHONY_RESULT_DISCONNECTED_UNASSIGNED_NUMBER:I = 0x6a

.field public static final VIDEO_TELEPHONY_RESULT_FALLBACK_47:I = 0x6c

.field public static final VIDEO_TELEPHONY_RESULT_FALLBACK_57:I = 0x6d

.field public static final VIDEO_TELEPHONY_RESULT_FALLBACK_58:I = 0x6e

.field public static final VIDEO_TELEPHONY_RESULT_FALLBACK_88:I = 0x6b

.field public static final VIDEO_TELEPHONY_RESULT_FALLBACK_EXCEPTION:I = -0x3

.field public static final VIDEO_TELEPHONY_RESULT_HANDUP_EXCEPTION:I = -0x2

.field public static final VIDEO_TELEPHONY_RESULT_NETWORK_CONGESTION:I = 0x73

.field public static final VIDEO_TELEPHONY_RESULT_NORMAL_UNSPECIFIED:I = 0x70

.field public static final VIDEO_TELEPHONY_RESULT_NO_USER_RESPONDING:I = 0x72

.field public static final VIDEO_TELEPHONY_RESULT_PROTOCOL_ERROR_UNSPECIFIED:I = 0x71

.field public static final VIDEO_TELEPHONY_RESULT_REJECT_EXCEPTION:I = -0x5

.field public static final VIDEO_TELEPHONY_STATE_ACTIVE:I = 0xd

.field private static final VIDEO_TELEPHONY_STATE_CHANGED:I = 0x0

.field public static final VIDEO_TELEPHONY_STATE_DISCONNECTED:I = 0xe

.field public static final VIDEO_TELEPHONY_STATE_IDLE:I = 0xa

.field public static final VIDEO_TELEPHONY_STATE_OFFHOOK:I = 0xc

.field public static final VIDEO_TELEPHONY_STATE_RINGING:I = 0xb

.field private static waitState:Ljava/lang/String;


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->waitState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;-><init>()V

    .line 46
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 89
    iput-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;-><init>(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->publish()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    return-void
.end method

.method private onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 2
    .parameter "cause"

    .prologue
    const/16 v1, 0x69

    .line 315
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_0

    .line 316
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    .line 371
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_1

    .line 319
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 321
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_2

    .line 322
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 324
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_3

    .line 325
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 327
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_4

    .line 328
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 330
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_5

    .line 331
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 333
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_6

    .line 334
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 336
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_7

    .line 337
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 339
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBILITY_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_8

    .line 340
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 342
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_9

    .line 343
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 345
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_a

    .line 346
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 348
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_b

    .line 349
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 351
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_c

    .line 352
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 354
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_d

    .line 355
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto :goto_0

    .line 357
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_3G_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_e

    .line 358
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto/16 :goto_0

    .line 360
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_f

    .line 361
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto/16 :goto_0

    .line 363
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_10

    .line 364
    const/16 v0, 0x71

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto/16 :goto_0

    .line 366
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_11

    .line 367
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto/16 :goto_0

    .line 370
    :cond_11
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V

    goto/16 :goto_0
.end method

.method private onException(I)V
    .locals 6
    .parameter "exception"

    .prologue
    .line 215
    iget-object v4, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 217
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;->onCallResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "VideoTelephonynterfaceManager"

    const-string v5, "Error to broadcast phone stated changed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 226
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 227
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    return-void
.end method

.method private onVTCallResult(I)V
    .locals 7
    .parameter "result"

    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 376
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 379
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;->onCallResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "VideoTelephonynterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: when onVTCallResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 385
    .end local v0           #N:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 384
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 385
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "videotelephony"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 118
    return-void
.end method


# virtual methods
.method public answer()V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 162
    const-string v1, "VideoTelephonynterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT answer exception: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, -0x1

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 136
    const-string v1, "VideoTelephonynterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT Call exception: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public fallback()V
    .locals 4

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->fallback()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 176
    const-string v1, "VideoTelephonynterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT fallback exception: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVTCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVTCallForwardingOption(ILandroid/os/Message;)V

    .line 390
    return-void
.end method

.method public getWaitState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->waitState:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 4

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupVT()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 150
    const-string v1, "VideoTelephonynterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT hangup exception: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 200
    :cond_0
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reject()V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupVT()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const/4 v1, -0x5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onException(I)V

    .line 188
    const-string v1, "VideoTelephonynterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT reject exception: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVTCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVTCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 393
    return-void
.end method

.method public setWaitState(Ljava/lang/String;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->waitState:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->waitState:Ljava/lang/String;

    goto :goto_0
.end method

.method public unregisterListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 211
    :cond_0
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
