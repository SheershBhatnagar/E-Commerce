
part of 'badge_cubit.dart';

@immutable
sealed class BadgeState {}

final class BadgeInitial extends BadgeState {}

final class CartBadgeState extends BadgeState {}

final class WishlistBadgeState extends BadgeState {}
