.class final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/android/server/appop/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field final isPrivileged:Z

.field final packageName:Ljava/lang/String;

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, packageName:Ljava/lang/String;

    iput-object p2, p0, uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iput-boolean p3, p0, isPrivileged:Z

    return-void
.end method
