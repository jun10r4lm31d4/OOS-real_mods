.class public Lcom/oneplus/settings/OPSecurityDetectionActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPSecurityDetectionActivity.java"


# static fields
.field private static final KEY_SECURITY_DETECTION_TYPE:I = 0xb

.field static final LEGAL_HEYTAP_URL:Ljava/lang/String; = ""

.field static final LEGAL_TENCENT_URL:Ljava/lang/String; = ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, finish()V

    :cond_0
    iput-object p0, p0, mContext:Landroid/content/Context;

    const v0, 0x7f0d0167

    invoke-virtual {p0, v0}, setContentView(I)V

    const v0, 0x7f0a06f0

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a050d

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f121089

    invoke-virtual {p0, v2}, getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f12108a

    invoke-virtual {p0, v4}, getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->parseLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v6, 0x7f121087

    invoke-virtual {p0, v6}, getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const v8, 0x7f121088

    invoke-virtual {p0, v8}, getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/oneplus/settings/utils/OPUtils;->parseLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
