.class public Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
.super Lcom/android/server/enterprise/otp/exceptions/OTPJniException;
.source "OTPExceptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$1;,
        Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    }
.end annotation


# static fields
.field private static final errorCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->values()[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    sget-object v5, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/otp/exceptions/OTPJniException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-static {p1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getTlcError(I)Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    return-void
.end method

.method private static getTlcError(I)Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getException()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$1;->$SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    iget-object v2, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x4ff

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x40d

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x412

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x40d

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
