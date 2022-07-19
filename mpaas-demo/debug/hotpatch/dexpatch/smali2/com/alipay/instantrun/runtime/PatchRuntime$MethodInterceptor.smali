.class Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;
.super Ljava/lang/Object;
.source "PatchRuntime.java"

# interfaces
.implements Lcom/alipay/instantrun/aop/IMethodAOPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/instantrun/runtime/PatchRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodInterceptor"
.end annotation


# instance fields
.field private changeQuickRedirect:Lcom/alipay/instantrun/ChangeQuickRedirect;

.field private methodId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/instantrun/runtime/PatchRuntime;


# direct methods
.method constructor <init>(Lcom/alipay/instantrun/runtime/PatchRuntime;Lcom/alipay/instantrun/ChangeQuickRedirect;Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->this$0:Lcom/alipay/instantrun/runtime/PatchRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->changeQuickRedirect:Lcom/alipay/instantrun/ChangeQuickRedirect;

    .line 330
    iput-object p3, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->methodId:Ljava/lang/String;

    .line 331
    return-void
.end method


# virtual methods
.method public intercept(Ljava/lang/reflect/Member;[Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;"
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;

    invoke-direct {v0}, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->this$0:Lcom/alipay/instantrun/runtime/PatchRuntime;

    # getter for: Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z
    invoke-static {v1}, Lcom/alipay/instantrun/runtime/PatchRuntime;->access$000(Lcom/alipay/instantrun/runtime/PatchRuntime;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    return-object v0

    .line 339
    :cond_0
    if-nez p1, :cond_1

    .line 340
    return-object v0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->changeQuickRedirect:Lcom/alipay/instantrun/ChangeQuickRedirect;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->methodId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 347
    :cond_2
    iget-object v3, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->changeQuickRedirect:Lcom/alipay/instantrun/ChangeQuickRedirect;

    iget-object v5, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->methodId:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/alipay/instantrun/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->isSupported:Z

    .line 349
    iget-object v3, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->changeQuickRedirect:Lcom/alipay/instantrun/ChangeQuickRedirect;

    iget-object v5, p0, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;->methodId:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/alipay/instantrun/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/alipay/instantrun/ChangeQuickRedirect;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->result:Ljava/lang/Object;

    .line 351
    :cond_3
    return-object v0

    .line 344
    :cond_4
    :goto_0
    return-object v0
.end method
