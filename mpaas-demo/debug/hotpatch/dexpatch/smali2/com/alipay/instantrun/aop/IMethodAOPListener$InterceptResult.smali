.class public Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;
.super Ljava/lang/Object;
.source "IMethodAOPListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/instantrun/aop/IMethodAOPListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptResult"
.end annotation


# instance fields
.field public isSupported:Z

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->isSupported:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/instantrun/aop/IMethodAOPListener$InterceptResult;->result:Ljava/lang/Object;

    return-void
.end method
