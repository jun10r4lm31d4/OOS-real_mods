.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$Uc0QFR5a_MhzwuvUoWpz73NAAEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/net/IIpMemoryStore;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, f$1:Ljava/lang/String;

    iput-object p3, p0, f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, f$1:Ljava/lang/String;

    iget-object v2, p0, f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-static {v0, v1, v2}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$12(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void
.end method
