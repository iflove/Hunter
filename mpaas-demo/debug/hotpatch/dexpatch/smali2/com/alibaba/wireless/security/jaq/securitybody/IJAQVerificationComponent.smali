.class public interface abstract Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;
.super Ljava/lang/Object;
.source "IJAQVerificationComponent.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "securitybody"
.end annotation


# virtual methods
.method public abstract doJAQVerfificationSync(Ljava/util/HashMap;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/jaq/JAQException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
