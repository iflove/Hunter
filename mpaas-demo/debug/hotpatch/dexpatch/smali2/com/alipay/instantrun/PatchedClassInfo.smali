.class public Lcom/alipay/instantrun/PatchedClassInfo;
.super Ljava/lang/Object;
.source "PatchedClassInfo.java"


# instance fields
.field public isRuntimeAOPPatch:Z

.field public patchClassName:Ljava/lang/String;

.field public patchedClassName:Ljava/lang/String;

.field public patchedMethodDescMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/instantrun/PatchedClassInfo;->isRuntimeAOPPatch:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedMethodDescMap:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedClassName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alipay/instantrun/PatchedClassInfo;->patchClassName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public setPatchedMethodDescMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedMethodDescMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public setRuntimeAOPPatch(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/alipay/instantrun/PatchedClassInfo;->isRuntimeAOPPatch:Z

    .line 23
    return-void
.end method
