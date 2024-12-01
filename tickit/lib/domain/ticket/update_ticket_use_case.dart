import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tickit/core/repository/repository_result.dart';
import 'package:tickit/core/use_case/use_case_result.dart';
import 'package:tickit/data/ticket/body/ticket_request_body.dart';
import 'package:tickit/data/ticket/entity/ticket_entity.dart';
import 'package:tickit/data/ticket/ticket_repository.dart';
import 'package:tickit/util/extract_color.dart';

final updateTicketUseCaseProvider = Provider.autoDispose(
  (ref) => UpdateTicketUseCase(
    ticketRepository: ref.watch(ticketRepositoryProvider),
  ),
);

class UpdateTicketUseCase {
  final TicketRepository _ticketRepository;

  const UpdateTicketUseCase({
    required TicketRepository ticketRepository,
  }) : _ticketRepository = ticketRepository;

  Future<UseCaseResult<TicketEntity>> call({
    required String id,
    required String image,
    required String location,
    required String title,
    required String datetime,
    String? backgroundColor,
    String? foregroundColor,
    List<Field>? fields,
  }) async {
    final RepositoryResult<TicketEntity> repositoryResult =
        await _ticketRepository.updateTicket(
      id: id,
      image: image,
      location: location,
      title: title,
      datetime: datetime,
      backgroundColor: backgroundColor == null
          ? null
          : extractColor(rawColor: backgroundColor),
      foregroundColor: foregroundColor == null
          ? null
          : extractColor(rawColor: foregroundColor),
      fields: fields,
    );

    return switch (repositoryResult) {
      SuccessRepositoryResult<TicketEntity>() => SuccessUseCaseResult(
          data: repositoryResult.data,
        ),
      FailureRepositoryResult<TicketEntity>() => FailureUseCaseResult(
          message: repositoryResult.messages?.first ?? '',
          statusCode: repositoryResult.statusCode,
        )
    };
  }
}
