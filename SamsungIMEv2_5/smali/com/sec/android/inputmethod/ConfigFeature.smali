.class public Lcom/sec/android/inputmethod/ConfigFeature;
.super Ljava/lang/Object;
.source "ConfigFeature.java"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private mIsUSAString:Z

.field private mIsVzwString:Z

.field private mOperator:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->countryCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsUSAString:Z

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsVzwString:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "CHN"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TGY"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    const-string v0, "CHINA"

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    :goto_0
    const-string v0, "VZW"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsUSAString:Z

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsVzwString:Z

    const-string v0, "USA"

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "CHINA"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "PAP"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->salesCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    const-string v0, "CHINA"

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_ConfigOpBranding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "SPR"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ATT"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TMO"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AIO"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsUSAString:Z

    const-string v0, "USA"

    iput-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public isUSAString()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsUSAString:Z

    return v0
.end method

.method public isUSASymbolLayout()Z
    .locals 2

    const-string v0, "USA"

    iget-object v1, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVzwString()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/ConfigFeature;->mIsVzwString:Z

    return v0
.end method
