.class final Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;
.super Ljava/lang/Object;
.source "CubeSetup.java"

# interfaces
.implements Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->setup(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;


# direct methods
.method constructor <init>(Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;->a:Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCubeLoadError(Lcom/antfin/cube/platform/handler/CKException;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;->a:Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;

    invoke-interface {v0, p1}, Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;->onCubeLoadError(Lcom/antfin/cube/platform/handler/CKException;)V

    .line 108
    return-void
.end method

.method public onCubeLoaded()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    # setter for: Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->access$002(Z)Z

    .line 100
    # invokes: Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a()Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/antcube/AntCube;->registerCompoments(Ljava/util/Collection;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;->a:Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;

    invoke-interface {v0}, Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;->onCubeLoaded()V

    .line 102
    return-void
.end method
