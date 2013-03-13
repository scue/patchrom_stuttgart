.class final enum Lcom/lenovo/leos/internal/server/StartShutdownService$State;
.super Ljava/lang/Enum;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/internal/server/StartShutdownService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/leos/internal/server/StartShutdownService$State;

.field public static final enum Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

.field public static final enum Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

.field public static final enum Shutdown:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

.field public static final enum Startup:Lcom/lenovo/leos/internal/server/StartShutdownService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    const-string v1, "Notify"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/internal/server/StartShutdownService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    const-string v1, "Startup"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/internal/server/StartShutdownService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Startup:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    const-string v1, "Shutdown"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/leos/internal/server/StartShutdownService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Shutdown:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/leos/internal/server/StartShutdownService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Startup:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Shutdown:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->$VALUES:[Lcom/lenovo/leos/internal/server/StartShutdownService$State;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->$VALUES:[Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    invoke-virtual {v0}, [Lcom/lenovo/leos/internal/server/StartShutdownService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    return-object v0
.end method
