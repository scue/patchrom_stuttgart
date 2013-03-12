.class public Lcom/lenovo/leos/internal/server/ServerAdapter;
.super Ljava/lang/Object;
.source "ServerAdapter.java"


# instance fields
.field private mBoss:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "boss"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/ServerAdapter;->mBoss:Ljava/lang/Class;

    .line 14
    return-void
.end method


# virtual methods
.method public getFieldInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 19
    .local v2, loader:Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 21
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 24
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 22
    :catch_0
    move-exception v3

    .line 24
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public varargs invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "className"
    .parameter "methodName"
    .parameter "ObjS"

    .prologue
    .line 44
    array-length v2, p3

    .line 45
    .local v2, count:I
    if-eqz v2, :cond_0

    rem-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_0

    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    const-string v9, "R2"

    const-string v10, "Warning! The last Param will be ignored!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    div-int/lit8 v3, v2, 0x2

    .line 51
    .local v3, divider:I
    new-array v1, v3, [Ljava/lang/Class;

    .line 52
    .local v1, clazzes:[Ljava/lang/Class;
    new-array v8, v3, [Ljava/lang/Object;

    .line 54
    .local v8, objects:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 55
    if-ge v5, v3, :cond_1

    .line 56
    aget-object v9, p3, v5

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v1, v5

    .line 54
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sub-int v9, v5, v3

    aget-object v10, p3, v5

    aput-object v10, v8, v9

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 64
    .local v6, loader:Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 66
    .local v7, method:Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/lenovo/leos/internal/server/ServerAdapter;->mBoss:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 69
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :goto_2
    return-object v9

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "R2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WOW! Exception In ServerAdapter! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v9, 0x0

    goto :goto_2
.end method
