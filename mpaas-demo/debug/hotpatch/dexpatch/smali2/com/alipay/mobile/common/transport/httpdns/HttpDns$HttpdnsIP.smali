.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.super Ljava/lang/Object;
.source "HttpDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpdnsIP"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field public cname:Ljava/lang/String;

.field private d:I

.field public ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

.field public ttd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    .line 803
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "_ip"    # Ljava/lang/String;
    .param p2, "_ttl"    # J

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 807
    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 809
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    .line 810
    return-void
.end method

.method private a()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 9

    const-string v0, "HTTP_DNS"

    .line 919
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 921
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    move-object v3, v1

    .line 922
    .local v3, "ips":[Ljava/net/InetAddress;
    move-object v3, v2

    array-length v2, v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 923
    .local v2, "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 924
    new-instance v5, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v4

    .line 923
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 926
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHttpdnsIpEntrys cname:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",local dns result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    array-length v4, v2

    if-lez v4, :cond_1

    .line 930
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 931
    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 933
    :cond_1
    return-object v2

    .line 937
    .end local v2    # "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v3    # "ips":[Ljava/net/InetAddress;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    if-eqz v2, :cond_3

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_3

    .line 938
    return-object v2

    .line 942
    :cond_3
    goto :goto_1

    .line 940
    :catchall_0
    move-exception v2

    .line 941
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHttpdnsIpEntrys ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_1
    const-string v2, "getHttpdnsIpEntrys return null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-object v1
.end method


# virtual methods
.method public getCname()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 3

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 852
    :catchall_0
    move-exception v0

    .line 853
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIp ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP_DNS"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .end local v0    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    if-eqz v0, :cond_0

    .line 910
    return-object v0

    .line 913
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v0

    return-object v0
.end method

.method public getIps()[Ljava/lang/String;
    .locals 6

    const-string v0, "HTTP_DNS"

    .line 889
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v2

    move-object v3, v1

    .line 890
    .local v3, "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 891
    return-object v1

    .line 894
    :cond_0
    array-length v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 896
    .local v2, "ips":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 897
    aget-object v5, v3, v4

    iget-object v5, v5, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 896
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 899
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIps :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    return-object v2

    .line 901
    .end local v2    # "ips":[Ljava/lang/String;
    .end local v3    # "httpdnsIPEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :catchall_0
    move-exception v2

    .line 902
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getIps ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .end local v2    # "ex":Ljava/lang/Throwable;
    const-string v2, "getIps return null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-object v1
.end method

.method public getNetType()I
    .locals 1

    .line 953
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->d:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 872
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    return-wide v0
.end method

.method public getTtd()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    return v0
.end method

.method public getTtl()J
    .locals 2

    .line 863
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    return-wide v0
.end method

.method public isDie()Z
    .locals 6

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    iget v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 840
    const/4 v0, 0x1

    return v0

    .line 842
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHasIPv6()Z
    .locals 4

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 971
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 972
    aget-object v2, v2, v1

    iget v2, v2, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ipType:I

    sget v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V6:I

    if-ne v2, v3, :cond_0

    .line 973
    const/4 v0, 0x1

    .line 974
    goto :goto_1

    .line 971
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public isTimeOut()Z
    .locals 5

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 833
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeOut(J)Z
    .locals 5
    .param p1, "validTime"    # J

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    add-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 821
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0
    .param p1, "cname"    # Ljava/lang/String;

    .line 884
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    .line 885
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .line 859
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 860
    return-void
.end method

.method public setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V
    .locals 0
    .param p1, "ipEntries"    # [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 949
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 950
    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .param p1, "netType"    # I

    .line 957
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->d:I

    .line 958
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 876
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 877
    return-void
.end method

.method public setTtd(I)V
    .locals 0
    .param p1, "ttd"    # I

    .line 965
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    .line 966
    return-void
.end method

.method public setTtl(J)V
    .locals 0
    .param p1, "ttl"    # J

    .line 867
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 868
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpdnsIP{ip=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", netType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ipEntries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 988
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->cname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ttd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ttd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasIPv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isHasIPv6()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0
.end method
