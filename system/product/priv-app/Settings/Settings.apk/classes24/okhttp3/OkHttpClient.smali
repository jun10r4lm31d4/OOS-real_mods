.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lokhttp3/Authenticator;

.field final cache:Lokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lokhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lokhttp3/CookieJar;

.field final dispatcher:Lokhttp3/Dispatcher;

.field final dns:Lokhttp3/Dns;

.field final eventListenerFactory:Lokhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, <init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, dispatcher:Lokhttp3/Dispatcher;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, protocols:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, connectionSpecs:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, interceptors:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, networkInterceptors:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, eventListenerFactory:Lokhttp3/EventListener$Factory;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, proxySelector:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, cookieJar:Lokhttp3/CookieJar;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    iput-object v0, p0, cache:Lokhttp3/Cache;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, internalCache:Lokhttp3/internal/cache/InternalCache;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, socketFactory:Ljavax/net/SocketFactory;

    const/4 v0, 0x0

    iget-object v1, p0, connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ConnectionSpec;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-direct {p0, v1}, systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, p0, certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v1, p0, certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    :goto_4
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v1, p0, hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v2, p0, certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v1, v2}, Lokhttp3/CertificatePinner;->withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v1

    iput-object v1, p0, certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v1, p0, proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iput-object v1, p0, authenticator:Lokhttp3/Authenticator;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v1, p0, connectionPool:Lokhttp3/ConnectionPool;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iput-object v1, p0, dns:Lokhttp3/Dns;

    iget-boolean v1, p1, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v1, p0, followSslRedirects:Z

    iget-boolean v1, p1, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v1, p0, followRedirects:Z

    iget-boolean v1, p1, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v1, p0, retryOnConnectionFailure:Z

    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v1, p0, connectTimeout:I

    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v1, p0, readTimeout:I

    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v1, p0, writeTimeout:I

    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    iput v1, p0, pingInterval:I

    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected default trust managers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public authenticator()Lokhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lokhttp3/Cache;
    .locals 1

    iget-object v0, p0, cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1

    iget-object v0, p0, certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    iget v0, p0, connectTimeout:I

    return v0
.end method

.method public connectionPool()Lokhttp3/ConnectionPool;
    .locals 1

    iget-object v0, p0, connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lokhttp3/CookieJar;
    .locals 1

    iget-object v0, p0, cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lokhttp3/Dispatcher;
    .locals 1

    iget-object v0, p0, dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 1

    iget-object v0, p0, dns:Lokhttp3/Dns;

    return-object v0
.end method

.method eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 1

    iget-object v0, p0, eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    iget-boolean v0, p0, followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    iget-boolean v0, p0, followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lokhttp3/internal/cache/InternalCache;
    .locals 1

    iget-object v0, p0, cache:Lokhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, internalCache:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 2

    new-instance v0, Lokhttp3/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-object v0
.end method

.method public newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    .locals 2

    new-instance v0, Lokhttp3/internal/ws/RealWebSocket;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V

    invoke-virtual {v0, p0}, Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    iget v0, p0, pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    iget v0, p0, readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    iget-boolean v0, p0, retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    iget v0, p0, writeTimeout:I

    return v0
.end method