.class Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkModePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkModePreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkModePreference;->dataConnectionStateChanged(I)V

    return-void
.end method
