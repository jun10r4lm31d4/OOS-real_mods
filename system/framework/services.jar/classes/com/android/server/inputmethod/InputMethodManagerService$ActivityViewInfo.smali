.class final Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityViewInfo"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-object p2, p0, mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .locals 1

    iget-object v0, p0, mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method
