.class public Lcom/android/contacts/common/GeoUtil;
.super Ljava/lang/Object;
.source "GeoUtil.java"


# direct methods
.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/common/location/CountryDetector;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/location/CountryDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/location/CountryDetector;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
