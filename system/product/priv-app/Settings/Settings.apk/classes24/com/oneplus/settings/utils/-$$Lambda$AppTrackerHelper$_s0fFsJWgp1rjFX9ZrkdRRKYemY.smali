.class public final synthetic Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Ljava/lang/String;

    iput-object p2, p0, f$1:Ljava/lang/String;

    iput-object p3, p0, f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, f$0:Ljava/lang/String;

    iget-object v1, p0, f$1:Ljava/lang/String;

    iget-object v2, p0, f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/AppTrackerHelper;->lambda$putAnalytics$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
