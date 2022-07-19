.class public Lcom/alipay/instantrun/InstantRunArguments;
.super Ljava/lang/Object;
.source "InstantRunArguments.java"


# instance fields
.field public current:Ljava/lang/Object;

.field public isStatic:Z

.field public methodId:Ljava/lang/String;

.field public paramsArray:[Ljava/lang/Object;

.field public paramsClassTypes:[Ljava/lang/Class;

.field public returnType:Ljava/lang/Class;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "paramsArray"    # [Ljava/lang/Object;
    .param p2, "current"    # Ljava/lang/Object;
    .param p3, "isStatic"    # Z
    .param p4, "methodId"    # Ljava/lang/String;
    .param p5, "paramsClassTypes"    # [Ljava/lang/Class;
    .param p6, "returnType"    # Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/instantrun/InstantRunArguments;->paramsArray:[Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lcom/alipay/instantrun/InstantRunArguments;->current:Ljava/lang/Object;

    .line 25
    iput-boolean p3, p0, Lcom/alipay/instantrun/InstantRunArguments;->isStatic:Z

    .line 26
    iput-object p4, p0, Lcom/alipay/instantrun/InstantRunArguments;->methodId:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/alipay/instantrun/InstantRunArguments;->paramsClassTypes:[Ljava/lang/Class;

    .line 28
    iput-object p6, p0, Lcom/alipay/instantrun/InstantRunArguments;->returnType:Ljava/lang/Class;

    .line 29
    return-void
.end method
