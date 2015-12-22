.class public Lcom/android/phone/mobilenetworks/MobileNetworksConstants;
.super Ljava/lang/Object;
.source "MobileNetworksConstants.java"


# static fields
.field public static final CheckBoxPreference:Ljava/lang/String;

.field public static final SwitchPreference:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->CheckBoxPreference:Ljava/lang/String;

    const-class v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->SwitchPreference:Ljava/lang/String;

    return-void
.end method
