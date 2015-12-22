.class Lcom/android/phone/PhoneGlobals$11;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 4

    const/16 v2, 0x7ed

    if-ne p2, v2, :cond_0

    const-string v2, "readsipmessage"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneApp"

    const-string v3, "IMSListener for Caller Name ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$11;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->callerNameIDLookup(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PhoneApp"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
