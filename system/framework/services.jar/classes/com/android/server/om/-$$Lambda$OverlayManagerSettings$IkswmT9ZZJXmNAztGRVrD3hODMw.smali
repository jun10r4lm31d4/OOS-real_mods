.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getOverlaysForUser$2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p1

    return p1
.end method