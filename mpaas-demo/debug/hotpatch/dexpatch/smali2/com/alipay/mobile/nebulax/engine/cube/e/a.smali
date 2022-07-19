.class public Lcom/alipay/mobile/nebulax/engine/cube/e/a;
.super Ljava/lang/Object;
.source "CubeUtils.java"


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method public static a(Lcom/antfin/cube/platform/handler/CKException;)Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;
    .locals 2

    .line 49
    if-nez p0, :cond_0

    .line 50
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->COMMON_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/antfin/cube/platform/handler/CKException;->getErrCode()Lcom/antfin/cube/platform/handler/CKErrorType;

    move-result-object v0

    sget-object v1, Lcom/antfin/cube/platform/handler/CKErrorType;->ASSERT_EXCEPTION:Lcom/antfin/cube/platform/handler/CKErrorType;

    if-ne v0, v1, :cond_1

    .line 53
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->ASSERT_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/antfin/cube/platform/handler/CKException;->getErrCode()Lcom/antfin/cube/platform/handler/CKErrorType;

    move-result-object v0

    sget-object v1, Lcom/antfin/cube/platform/handler/CKErrorType;->JS_EXCEPTION:Lcom/antfin/cube/platform/handler/CKErrorType;

    if-ne v0, v1, :cond_2

    .line 55
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->JS_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/antfin/cube/platform/handler/CKException;->getErrCode()Lcom/antfin/cube/platform/handler/CKErrorType;

    move-result-object p0

    sget-object v0, Lcom/antfin/cube/platform/handler/CKErrorType;->COMMON_EXCEPTION:Lcom/antfin/cube/platform/handler/CKErrorType;

    if-ne p0, v0, :cond_3

    .line 57
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->COMMON_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0

    .line 59
    :cond_3
    sget-object p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->COMMON_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 2

    .line 27
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulax/engine/cube/a;

    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object p0

    const-class p1, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_1
    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p0

    return-object p0

    .line 43
    :cond_2
    invoke-interface {p0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-object p0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 72
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5c0

    if-eq v5, v6, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v5, ".."

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 79
    :cond_4
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 80
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 77
    :cond_5
    nop

    .line 87
    :cond_6
    :goto_2
    goto :goto_0

    .line 89
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    goto :goto_3

    .line 94
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_9

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_9
    return-object p0
.end method

.method private static a()Ljava/util/regex/Pattern;
    .locals 1

    .line 104
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "/?([^/]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a:Ljava/util/regex/Pattern;

    .line 107
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method
