.class public interface abstract Lcom/alibaba/wireless/security/jaq/avmp/IJAQAVMPSignComponent;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "avmp"
.end annotation


# static fields
.field public static final JAQ_SIGNTYPE_HMACSHA1:I = 0x1

.field public static final JAQ_SIGNTYPE_MWUA:I


# virtual methods
.method public abstract avmpSign(I[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/jaq/JAQException;
        }
    .end annotation
.end method

.method public abstract initialize()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/jaq/JAQException;
        }
    .end annotation
.end method

.method public abstract uninitialize()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/jaq/JAQException;
        }
    .end annotation
.end method
