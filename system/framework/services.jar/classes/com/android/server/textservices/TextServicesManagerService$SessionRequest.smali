.class final Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionRequest"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mLocale:Ljava/lang/String;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUid:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, mUid:I

    iput-object p2, p0, mLocale:Ljava/lang/String;

    iput-object p3, p0, mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    iput-object p4, p0, mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iput-object p5, p0, mBundle:Landroid/os/Bundle;

    return-void
.end method
