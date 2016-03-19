.class public Lcom/ime/framework/dbmanager/DbID;
.super Ljava/lang/Object;
.source "DbID.java"


# static fields
.field public static final DB_DATE_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"

.field private static final HOTWORD_KEY_STR:Ljava/lang/String; = "hotwords"

.field public static final SOGOU_HOTWORD_CN:Ljava/lang/String; = "225-hotwords-SogouCN"

.field private static final SOGOU_KEY_STR:Ljava/lang/String; = "Sogou"

.field private static final XT9_DIALECT_KEY_STR:Ljava/lang/String; = "dialects"

.field public static final XT9_HOTWORD_CN:Ljava/lang/String; = "225-hotwords-HotwordsCN"

.field public static final XT9_HOTWORD_HK:Ljava/lang/String; = "226-hotwords-HotwordsHK"

.field public static final XT9_HOTWORD_TW:Ljava/lang/String; = "224-hotwords-HotwordsTW"

.field private static final XT9_POI_KEY_STR:Ljava/lang/String; = "points_of_interest"

.field private static final XT9_SPORTSENTER_KEY_STR:Ljava/lang/String; = "sports_entertainment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHotwordDB(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "hotwords"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSogouHotword(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Sogou"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isXT9CDB(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "hotwords"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXT9Dialect(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "dialects"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isXT9Hotword(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "hotwords"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sogou"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXT9POI(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "points_of_interest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isXT9SportsEntertainment(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "sports_entertainment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
