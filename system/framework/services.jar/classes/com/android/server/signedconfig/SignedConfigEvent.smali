.class public Lcom/android/server/signedconfig/SignedConfigEvent;
.super Ljava/lang/Object;
.source "SignedConfigEvent.java"


# instance fields
.field public fromPackage:Ljava/lang/String;

.field public status:I

.field public type:I

.field public verifiedWith:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, type:I

    iput v0, p0, status:I

    iput v0, p0, version:I

    const/4 v1, 0x0

    iput-object v1, p0, fromPackage:Ljava/lang/String;

    iput v0, p0, verifiedWith:I

    return-void
.end method


# virtual methods
.method public send()V
    .locals 6

    iget v1, p0, type:I

    iget v2, p0, status:I

    iget v3, p0, version:I

    iget-object v4, p0, fromPackage:Ljava/lang/String;

    iget v5, p0, verifiedWith:I

    const/16 v0, 0x7b

    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write(IIIILjava/lang/String;I)I

    return-void
.end method
