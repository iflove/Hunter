.class public interface abstract Lcom/alipay/instantrun/aop/IMethodAOPListener;
.super Ljava/lang/Object;
.source "IMethodAOPListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
    }
.end annotation


# virtual methods
.method public abstract intercept(Ljava/lang/reflect/Member;[Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
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
.end method
