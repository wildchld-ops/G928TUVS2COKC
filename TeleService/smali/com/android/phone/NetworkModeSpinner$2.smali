.class Lcom/android/phone/NetworkModeSpinner$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModeSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$2;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$2;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkModeSpinner;->dataConnectionStateChanged(I)V

    return-void
.end method
