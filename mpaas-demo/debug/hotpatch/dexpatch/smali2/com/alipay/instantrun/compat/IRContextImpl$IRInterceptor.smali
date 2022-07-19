.class Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;
.super Ljava/lang/Object;
.source "IRContextImpl.java"

# interfaces
.implements Lcom/alipay/dexaop/ChainInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/instantrun/compat/IRContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRInterceptor"
.end annotation


# instance fields
.field methodAOPListener:Lcom/alipay/instantrun/aop/IMethodAOPListener;


# direct methods
.method constructor <init>(Lcom/alipay/instantrun/aop/IMethodAOPListener;)V
    .locals 1
    .param p1, "methodAOPListener"    # Lcom/alipay/instantrun/aop/IMethodAOPListener;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;->methodAOPListener:Lcom/alipay/instantrun/aop/IMethodAOPListener;

    .line 92
    iput-object p1, p0, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;->methodAOPListener:Lcom/alipay/instantrun/aop/IMethodAOPListener;

    .line 93
    return-void
.end method


# virtual methods
.method public intercept(Lcom/alipay/dexaop/Chain;)Ljava/lang/Object;
    .locals 12
    .param p1, "chain"    # Lcom/alipay/dexaop/Chain;

    .line 97
    invoke-static {p1}, Lcom/alipay/instantrun/compat/DexAOPHookUtil;->getHookTargetFromChain(Lcom/alipay/dexaop/Chain;)Ljava/lang/reflect/Member;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, v7

    .line 98
    .local v1, "member":Ljava/lang/reflect/Member;
    move-object v1, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;->methodAOPListener:Lcom/alipay/instantrun/aop/IMethodAOPListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->getParamTypes()[Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "paramTypeStrings":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->getReturnType()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "returnTypeStr":Ljava/lang/String;
    array-length v0, v8

    new-array v10, v0, [Ljava/lang/Class;

    .line 104
    .local v10, "paramsClassTypes":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v10

    if-ge v0, v2, :cond_1

    .line 105
    aget-object v2, v8, v0

    invoke-static {v2}, Lcom/alipay/instantrun/compat/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v10, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_1
    invoke-static {v9}, Lcom/alipay/instantrun/compat/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 108
    .local v11, "returnType":Ljava/lang/Class;
    iget-object v0, p0, Lcom/alipay/instantrun/compat/IRContextImpl$IRInterceptor;->methodAOPListener:Lcom/alipay/instantrun/aop/IMethodAOPListener;

    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->getParams()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->getInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    move-object v5, v10

    move-object v6, v11

    invoke-interface/range {v0 .. v6}, Lcom/alipay/instantrun/aop/IMethodAOPListener;->intercept(Ljava/lang/reflect/Member;[Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;

    move-result-object v0

    move-object v2, v7

    .line 109
    .local v2, "interceptResult":Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
    move-object v2, v0

    iget-boolean v0, v0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->isSupported:Z

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, v2, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->result:Ljava/lang/Object;

    return-object v0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 99
    .end local v2    # "interceptResult":Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
    .end local v8    # "paramTypeStrings":[Ljava/lang/String;
    .end local v9    # "returnTypeStr":Ljava/lang/String;
    .end local v10    # "paramsClassTypes":[Ljava/lang/Class;
    .end local v11    # "returnType":Ljava/lang/Class;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/dexaop/Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
